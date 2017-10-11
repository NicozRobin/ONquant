% ��򵥵�˫���߲���
function Signal = Strategy(DB)
db=DB.SH600000;
Signal = [];
MA5 = MovAvg(db.Close,DB.CurrentK,5);  %���� 5�վ���
MA20 = MovAvg(db.Close,DB.CurrentK,20); %���� 20�վ���
if(MA5 > MA20) %5�վ����ϴ�20�վ��� ��
    Signal{1}.Direction = 'SELL';
    Signal{1}.Volume = 100;
    Signal{1}.Stock = db.Code;
    
    % Signal{2}.Direction = 'BUY';
    % Signal{2}.Volume = 100;
    % Signal{2}.Stock = '600000.SH';
elseif (MA5 < MA20) %5�վ����´�20�վ��� ��
    Signal{1}.Direction = 'SELL';
    Signal{1}.Volume = 100;
    Signal{1}.Stock = db.Code;
    
    % Signal{2}.Direction = 'BUY';
    % Signal{2}.Volume = 100;
    % Signal{2}.Stock = '600000.SH';
end