function [Asset] = Backtest(StrategyFunc,windcode,start_time,end_time,Options)
% ����K������
if ischar(windcode)
    % ��λ�α�λ�õ���һ��K��
    DB.CurrentK = 1;
    [Data flag] = LoadData(windcode,start_time,end_time,Options);
    DB=setfield(DB,[windcode(8:9) windcode(1:6)],Data);
    if flag==0
        disp('=== Back test shutting down! ===')
        return;
    end
end
if iscell(windcode)
    % ��λ�α�λ�õ���һ��K��
    DB.CurrentK = 1;
    for i=1:max(size(windcode))
        [Data flag] = LoadData(windcode{i},start_time,end_time,Options);
        DB=setfield(DB,[windcode{i}(8:9) windcode{i}(1:6)],Data);
        if flag==0
            disp('=== Back test shutting down! ===')
            return;
        end
    end
end
% ʱ����
DB.Times = Data.Times;
DB.TimesStr = datestr(Data.Times,'yymmdd');%�������ո�ʽ��ʱ����������գ�
% K������
DB.NK = length(Data.Open);

% ��ʼ���ʲ���
Asset = InitAsset(DB);

% ��K��ѭ��
for K = 1:DB.NK
    DB.CurrentK = K; %��ǰK��
    Signal = StrategyFunc(DB); %���в��Ժ��������ɽ����ź�
    if ~isempty(Signal)
        for sig=1:length(Signal)
            if strcmp(Signal{sig}.Direction,'BUY') == 1
                Asset = Buy(DB,Asset,Signal{sig}.Stock,Signal{sig}.Volume,NaN,'Close'); % �䵥�������̼���
            elseif strcmp(Signal{sig}.Direction,'SELL') == 1
                Asset = Sell(DB,Asset,Signal{sig}.Stock,Signal{sig}.Volume,NaN,'Close'); % �䵥�������̼���
            end
        end
    end
    
    % ÿ��K�������н���ʱ��Ҫ����
    Asset = Clearing(DB,Asset);
end

Summary(DB,Asset);
disp('=== Back test complete! ===')