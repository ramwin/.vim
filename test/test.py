#!/usr/bin/env python3
# -*- coding: utf-8 -*-
# Xiang Wang <ramwin@qq.com>


"""
这是很长的注释, 用来测试flake8
"""

from dataclasses import dataclass
from pathlib import Path
import os

import re

from .test_obj import Student


def main():
    a = "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
    return a


# jA↵ 应该出现自动缩进


def test_student():
    amily = Student(name="amily", id=1)
    # 下面输入 amily. 要弹出 说 姓名 唯一标识
    amily.
