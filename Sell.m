function Asset = Sell(DB,Asset,Stock,volume,price,flag)
%��ǰK��λ��
I = DB.CurrentK;
%���
Asset.DealStock{I} = [Asset.DealStock{I},{Stock}];
%�ɽ����� ����Ϊ��
Asset.Volume{I} = [Asset.Volume{I} -volume];
%�ɽ���
if(strcmp(flag,'CLOSE')==0)
    Data=getfield(DB,[Stock(8:9) Stock(1:6)]);
    Asset.Price{I} = [Asset.Price{I} Data.Close(I)]; %�ɽ��� ��Ϊ��
else
    Asset.Price{I} = [Asset.Price{I} price];
end