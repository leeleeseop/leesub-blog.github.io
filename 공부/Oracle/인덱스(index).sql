-- �˻��ϴ� �׸� �ε����� ����� �ӵ��� �������ϴ�. (select �ӵ�)
-- ����ó�� �˻��� �����ؼ� �ε���
/* ���� �ּ� */
select /*+index(member idx_member_tel)*/ id, name, tel
from member
where tel = '010-1111-2222';

-- �ӵ� ����� ���� �ε��� ����
create index idx_member_tel
on member(tel asc);

select /*+index(board sys_c007131) */
    no, title
from board;

select
    no, title
from board
order by no asc;

create index idx_board_no_desc
on board(no desc);

select no, title, writer, writeDate, hit
from(
    select /*+index(board idx_board_no_desc) */
        rownum rnum, no, title, writer, writeDate, hit
    from board
)
where rnum between 1 and 10;