function Asset = InitAsset(DB)
NT = DB.NK;

% ��ǰ�ֲ���
Asset.CurrentPosition = 0;
Asset.CurrentStock = [];
% �ɽ�������
Asset.Volume = cell(NT,1);
% �ɽ�������
Asset.Price = cell(NT,1);
% �ɽ��������
Asset.DealStock = cell(NT,1);
% �ֲ�������
Asset.Position = cell(NT,1);
% �ֱֲ������
Asset.Stock = cell(NT,1);
% �����ֽ�����
Asset.Cash = zeros(NT,1);
% ���ʲ�����
Asset.GrossAssets = zeros(NT,1);