����matlab���¼������ز���

��Main.m�ж��Ĺ�Ʊ�ء�ָ���ز⿪ʼ�������ںͽ��и߼�����Options������Main.m�õ����Իز�����
�ʲ������Ϣ������Asset������ɵ���Summary(Asset,DB,Options)����ʽ����ߵȡ�
  AssetΪ���ݽṹ�壬�ֶΰ���ʱ����Times��yymmdd��ʽʱ����TimesStr����ʼ�ֽ�InitCash
    ��ǰ�ֱֲ��CurrentStock����ǰ�ֲ�CurrentPosition��
    �䵥���OrderStock���䵥�۸�OrderPrice���䵥��OrderVolume��
    �ɽ����DealStock���ɽ��۸�DealPrice���ɽ���DealVolume��������DealFee��
    �ֱֲ����ʷStock���ֲ���ʷPosition�������ֽ���ʷCash��
    ��׼BenchmarkStock����׼������BenchmarkReturns����׼ÿ��������BenchmarkDailyReturns����׼�껯������BenchmarkAnnualReturns��
    ���ʲ�GrossAssets����λ����PositionsRatio��������Returns��ÿ��������DailyReturns���껯������AnnualReturns��
    ��������ExcessReturns�����س�MaxDrawdown�����س���˵�bar����DrawdownTopInd�����س��Ҷ˵�bar����DrawdownBottomInd
    Alpha��Beta��Sharpe��Volatility

��Strategy.m�б�д���ԡ����ݵ�ǰ�õ�������DB�����ź�Signal:
  DBΪ���ݽṹ�壬�ֶΰ���K�������α�CurrentK��ʱ����Times��yymmdd��ʽʱ����TimesStr��������ݣ���DB.SH600000����
    ���������LoadData.m��ȡ��Ŀǰ�����������ݡ�֤ȯ������Ϣ��֤ȯ������Ϣ���ֶΰ�������Code��������ϢInfo��
      ʱ����Times��yymmdd��ʽʱ����TimesStr��֤ȯ����״̬Sec_status������״̬Trade_status���ǵ���Pct_chg��
      ���̼�Open����߼�High����ͼ�Low�����̼�Close���ɽ���Volume������������NK
  SignalΪ�ṹ�����飬��������������Ⱥ�����ţ��ֶΰ����µ���Volume���������Stock����Ϸ�ʽType��

20171030 update:
1. ������ʵ�ʵĳɽ����ƣ��������뻬�㡢Ӷ��ӡ��˰��
2. ���뽻��ʧ�ܵ�����жϣ�����δ���л����С��ǵ�ͣ��ͣ�Ƶ�
3. �Խ���ʧ�ܵ�����������Զ��ӳ��������䵥�Ļ���
4. �Գɽ����������ƣ������������롢���ó������ճɽ����Ĺ̶�������ʣ������ʽ����Ϊ�����Ƿ�������ģʽ
5. ��һ���ḻ��Summaryģ��Ļز���ͳ�ƣ��������س��ļ���Ϳ��ӻ�
6. ��������Զ����ȫ�ֱ���Context�������д�����ӵĲ��Ժͱ����Զ���������
7. �Բ���ÿ��������õ��������˽ضϣ�������δ�����ݵ�ʹ��

������T+0�����жϺ͸��ḻ�Ļز���ͳ�������

20171011 update:
Ŀǰ֧�ֶ�֧��Ʊ�����߻ز⡣�������Զ���ȫ�ֱ�����������ϴ�������ѡ���ϸ�زⱨ��



