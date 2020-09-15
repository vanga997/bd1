CREATE TABLE ���������
(
  ���_��������� INT NOT NULL,
  ������������_��������� INT NOT NULL,
  _����� INT NOT NULL,
  ����������� INT NOT NULL,
  ���������� INT NOT NULL,
  PRIMARY KEY (���_���������)
);

CREATE TABLE ����_������
(
  ���_���� INT NOT NULL,
  ������������ INT NOT NULL,
  �������� INT NOT NULL,
  ����������� INT NOT NULL,
  PRIMARY KEY (���_����)
);

CREATE TABLE �����
(
  ���_����� INT NOT NULL,
  ������������ INT NOT NULL,
  ����� INT NOT NULL,
  ������ INT NOT NULL,
  ������� INT NOT NULL,
  ����� INT NOT NULL,
  ����������_���� INT NOT NULL,
  ����������_���� INT NOT NULL,
  PRIMARY KEY (���_�����)
);

CREATE TABLE ��������������_������
(
  ���_������ INT NOT NULL,
  ������������ INT NOT NULL,
  ��������,_���� INT NOT NULL,
  PRIMARY KEY (���_������)
);

CREATE TABLE �������
(
  ��� INT NOT NULL,
  ����_�������� INT NOT NULL,
  ���_������� INT NOT NULL,
  ��� INT NOT NULL,
  ������� INT NOT NULL,
  ����� INT NOT NULL,
  ����������_������ INT NOT NULL,
  PRIMARY KEY (���_�������)
);

CREATE TABLE ����������
(
  ���_���������� INT NOT NULL,
  ��� INT NOT NULL,
  ������� INT NOT NULL,
  ��� INT NOT NULL,
  ������� INT NOT NULL,
  ����������_������ INT NOT NULL,
  ���_��������� INT NOT NULL,
  ����� INT NOT NULL,
  ���_��������� INT NOT NULL,
  PRIMARY KEY (���_����������),
  FOREIGN KEY (���_���������) REFERENCES ���������(���_���������),
  UNIQUE (����������_������)
);

CREATE TABLE ������
(
  ����_������ INT NOT NULL,
  ����_��������� INT NOT NULL,
  ����������������� INT NOT NULL,
  ���_����� INT NOT NULL,
  ���_������_1 INT NOT NULL,
  ���_������_2 INT NOT NULL,
  ���_���� INT NOT NULL,
  ���_������� INT NOT NULL,
  ���_������_3 INT NOT NULL,
  ���_���������� INT NOT NULL,
  �������_�_������������ INT NOT NULL,
  �������_��_������ INT NOT NULL,
  ���_������� INT NOT NULL,
  ���_����� INT NOT NULL,
  ���_���������� INT NOT NULL,
  ���_������ INT NOT NULL,
  ���_���� INT NOT NULL,
  PRIMARY KEY (���_�������),
  FOREIGN KEY (���_�������) REFERENCES �������(���_�������),
  FOREIGN KEY (���_�����) REFERENCES �����(���_�����),
  FOREIGN KEY (���_����������) REFERENCES ����������(���_����������),
  FOREIGN KEY (���_������) REFERENCES ��������������_������(���_������),
  FOREIGN KEY (���_����) REFERENCES ����_������(���_����),
  UNIQUE (���_����������)
);