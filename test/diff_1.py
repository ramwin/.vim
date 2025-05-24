#!/usr/bin/env python3
# -*- coding: utf-8 -*-
# Xiang Wang <ramwin@qq.com>


daemon = False
workers = 16
threads = 4
# 我多一行有颜色
pidfile = "./deploy/gunicorn.pid"
# 3,4变了能看出来
bind = "0.0.0.0:18123"
accesslog = "log/gunicorn/access.log"
errorlog = "log/gunicorn/error.log"
timeout = 15
