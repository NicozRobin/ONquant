%% �ز�ģ��
% Version/Date:     0.2 / 2017.10.30
%% Options
clear;close all;clc

Options.InitCash = 1000000;
Options.Benchmark = '000300.SH'; % ���û�׼
Options.VolumeRatio = 0.25; % �ɽ������Ʋ��ó������ճɽ����Ĺ̶�����
Options.RiskFreeReturn = 0.05; % �޷���������
Options.MinCommission = 5; % ��СӶ��
Options.Commission = 0.0008; % Ӷ��
Options.StampTax = 0.001; % ����ʱ���յ�ӡ��˰
Options.Slippage = 0.00246; % ����
Options.PartialDeal = 1; % �����Զ����ֳɽ�ģʽ

Options.Short = 1; % ����Խ��ױ�Ľ�������
Options.DelayDays = 3; % ����ʧ��������ӳٽ����������������������

% Options.T_0 = 1; % ����T+0����

%% Test 1
Context.fast = 5;
Context.slow = 20;
[Asset1,DB1] = Backtest(@Strategy,Context,{'600000.SH','600300.SH'},'2014-12-02 09:00:00','2015-7-31 12:00:00',Options);
%% Test 2
Context.fast = 2;
Context.slow = 5;
[Asset2,DB2] = Backtest(@Strategy,Context,{'600000.SH','600300.SH'},'2014-12-02 09:00:00','2015-7-31 12:00:00',Options);