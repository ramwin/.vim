#!/usr/bin/env python3
# -*- coding: utf-8 -*-
# Xiang Wang <ramwin@qq.com>


from dataclasses import dataclass
from test_obj import Student


@dataclass
class Teacher:
    age: int
    name: str
    class_name: str



def say_hi(student: Student):
    # student.  这里输入.后会弹出id, name, say
    return


def teacher_say_hi(teacher: Teacher):
    # teacher.  这里输入.会弹出class_name, age, name
    return 
