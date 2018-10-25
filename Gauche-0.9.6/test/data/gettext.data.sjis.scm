;; -*- coding: shift_jis -*-
;; encoding-dependent test data for gettext

(define *tests*
  '(("en"
     ("Hello, World!")
     ("Menu|File|Quit" "Quit")
     ("A banana plant in the autumn gale\nI listen to the dripping of rain\nInto a basin at night.\n")
     ("Clouds will separate\nThe two friends, after the migrating\nWild goose's departure\n")
     )
    ("ja"
     ("Hello, World!" "�����́A���E�I")
     ("Menu|File|Quit" "�I��")
     ("A banana plant in the autumn gale\nI listen to the dripping of rain\nInto a basin at night.\n"
      "�m�Ԗ앪����\n���炢�ɉJ��\n�����邩��\n")
     ("Clouds will separate\nThe two friends, after the migrating\nWild goose's departure\n"
      "�_�Ɗu��\n�F������\n�����ʂ�\n"))))

(define *plural-tests*
  '(("en"
     ("There is ~D mouse." "There are ~D mice."
      (0 "There are 0 mice.")
      (1 "There is 1 mouse.")
      (2 "There are 2 mice.")))
    ("ja"
     ("There is ~D mouse." "There are ~D mice."
      (0 "0�l�Y�~������܂��B")
      (1 "1�l�Y�~������܂��B")
      ))))
