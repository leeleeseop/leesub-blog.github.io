--  ī��� ����
-- 1. ��ü ���̺��� ī��Ʈ
select count(*) from board;

-- �ۼ��ڰ� lee�� �������� ����
select count(*) from board where writer = 'lee';
select distinct writer from board;

-- �ۼ��ں� ������ ����
select writer, count(*) cnt
from board
group by writer
having count(*) >= 40
order by cnt desc;

-- ȸ�� ���� �ο���
select gender, count(*) cnt
from member
-- where status = '����' - ���� ���� ������ ������ ����
group by gender;

-- HAVING


insert into board(no, title, content, writer, pw)
values(board_seq.nextval, 'java', 'program', '���̼�', '1111');
insert into board(no, title, content, writer, pw)
values(board_seq.nextval, 'java', 'program', 'hong', '1111');
commit;
insert into board(no, title, content, writer, pw)
(select board_seq.nextval, title, content, writer, pw from board);
