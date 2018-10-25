;; -*- coding: euc-jp -*-
;; encoding-dependent test data for gettext

(define *tests*
  '(("en"
     ("Hello, World!")
     ("Menu|File|Quit" "Quit")
     ("A banana plant in the autumn gale\nI listen to the dripping of rain\nInto a basin at night.\n")
     ("Clouds will separate\nThe two friends, after the migrating\nWild goose's departure\n")
     )
    ("ja"
     ("Hello, World!" "�����ϡ�������")
     ("Menu|File|Quit" "��λ")
     ("A banana plant in the autumn gale\nI listen to the dripping of rain\nInto a basin at night.\n"
      "�ξ���ʬ����\n���餤�˱���\nİ���뤫��\n")
     ("Clouds will separate\nThe two friends, after the migrating\nWild goose's departure\n"
      "���ȳ֤�\nͧ������\n�����̤�\n"))))

(define *plural-tests*
  '(("en"
     ("There is ~D mouse." "There are ~D mice."
      (0 "There are 0 mice.")
      (1 "There is 1 mouse.")
      (2 "There are 2 mice.")))
    ("ja"
     ("There is ~D mouse." "There are ~D mice."
      (0 "0�ͥ��ߤ�����ޤ���")
      (1 "1�ͥ��ߤ�����ޤ���")
      ))))
