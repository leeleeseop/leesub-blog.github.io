-- << ȸ������ ��Ű�� >> --
-- 1. ��ü ����
DROP TABLE member CASCADE CONSTRAINTS;
DROP TABLE grade CASCADE CONSTRAINTS;


-- 2. ��ü ����
create table grade(
gradeNo number(2) primary key,
gradeName varchar2(21) not null
);

CREATE TABLE member(
  -- primary key(PK): not null + unique(������, �ߺ����� ����)(UK)
  id VARCHAR2(20) PRIMARY KEY,
  pw VARCHAR2(20) NOT NULL,
  name VARCHAR2(30) NOT NULL,
  -- varchar2 - �������� ������, char - ���� ���� : char(6) - '��' ->'��   '
  -- check �������� (CK) - �����͸� �Է��� �� �Է� ������ ������ üũ���ش�.
  -- not null(NN) : �����Ͱ� �ݵ�� �����ؾ߸� �Ѵ�.
  gender CHAR(6) CHECK (gender = '����' or gender = '����') NOT NULL,
  birth DATE NOT NULL,
  tel VARCHAR2(13),
  email VARCHAR2(50) NOT NULL,
  regDate DATE DEFAULT sysdate,
  conDate DATE DEFAULT sysdate,
  --status CHAR(6)  DEFAULT '����' CHECK(status = '����' or status = '����' or status = 'Ż��' or status = '�޸�'),
  status CHAR(6)  DEFAULT '����' CHECK(status in('����', '����', 'Ż��', '�޸�')),
  -- 1:�Ϲ�ȸ��, 9:������ -> grade ���̺� ����
  -- references : ����Ű(=�ܷ�Ű) - Foriegn Key(FK) : �����ϰ� �ִ� ������ + null ��� ����
  newMsgCnt number default 0,
  photo varchar2(100),
  gradeNo number(2)  DEFAULT 1 REFERENCES grade(gradeNo) 
  -- on DELETE CASCADE
  -- ON DELETE SET null
);

-- 3. ���� ������ - �Ϲݻ����, ������

insert into grade
values(1, '�Ϲ�ȸ��');
insert into grade
values(9, '������');


-- �Ϲݻ���� - ȸ������
INSERT INTO member(id, pw, name, gender, birth, tel, email)
VALUES('test', '1111', 'ȫ�浿', '����', '1990-01-01', '010-1111-2222', 'hong@naver.com');

INSERT INTO member(id, pw, name, gender, birth, tel, email)
VALUES('fest', '2222', '�����', '����', '1987-01-01', '010-141-2282', 'kong@naver.com');

-- ������ - ���� DB �Է� - �׻� ���� �̿��� �Ѵ�.
INSERT INTO member(id, pw, name, gender, birth, tel, email, gradeNo)
VALUES('admin', '1111', '������', '����', '1990-01-01', '010-1111-2222', 'admin@naver.com',9);
COMMIT;
