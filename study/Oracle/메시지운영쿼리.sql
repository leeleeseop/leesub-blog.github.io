--- �޽��� � ����
-- 1. ����Ʈ
select
    m.no, m.content, m.senderID, sm.name, m.sendDate, 
    m.accepterID, am.name, m.acceptDate
from message m, member sm, member am

-- ����((�Ϲ�����) and (��������)) : ������ ������ ���� ����
where m.senderID = sm.id and accpterID = am.id;