-- �������� � ����
-- 1. ����Ʈ

-- 1-0) ��� ���� - ������ ����.
select no, title, startDate, endDate, updateDate
from notice
-- �������� ���纸�� �۰� ������ ���纸�� ũ�� - ���簡 �����ϰ� ������ ���̿� �ִ�.
where startDate <= sysdate and endDate >= trunc(sysdate)
order by updateDate desc, no desc;

-- 1-1) ���� ���� - �Ϲ�ȸ�� �̻�
select no, title, startDate, endDate, updateDate
from notice
-- �������� ���纸�� �۰� ������ ���纸�� ũ�� - ���簡 �����ϰ� ������ ���̿� �ִ�.
where startDate <= sysdate and endDate >= trunc(sysdate)
order by updateDate desc, no desc;

-- 1-2) ���� ���� - �����ڸ�
select no, title, startDate, endDate, updateDate
from notice
-- �������� ���纸�� �۴� - �������� ��������.
where startDate < trunc(sysdate)
order by updateDate desc, no desc;

update notice set endDate = '2024-04-29'
where no = 2;

-- 1-3) ������� - �����ڸ�
select no, title, startDate, endDate, updateDate
from notice
-- �������� ���纸�� ũ�� - ���� �� - �������� �ڿ� �ִ�
where startDate > sysdate
order by updateDate desc, no desc;

update notice set startDate = '2024-05-01'
where no = 3;

ROLLBACK;