% ��򵥵�˫���߲���
function Signal = Strategy(DB,Context)
db=DB.SH600000;
Signal = [];
MA5 = MovAvg(db.Close,DB.CurrentK,Context.fast);  %5�վ���
MA20 = MovAvg(db.Close,DB.CurrentK,Context.slow); %20�վ���
if(MA5 > MA20) %5�վ����ϴ�20�վ���
    Signal{1}.Volume = 5000;
    Signal{1}.Stock = db.Code;
    Signal{1}.Type = 'TodayClose';
    Signal{2}.Volume = 5000;
    Signal{2}.Stock = '600300.SH';
    Signal{2}.Type = 'NextOpen';
elseif (MA5 < MA20) %5�վ����´�20�վ���
    Signal{1}.Volume = -5000;
    Signal{1}.Stock = db.Code;
    Signal{1}.Type = 'NextOpen';
    Signal{2}.Volume = -5000;
    Signal{2}.Stock = '600300.SH';
    Signal{2}.Type = 'TodayClose';
end