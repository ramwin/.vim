#!/usr/bin/env python3
# -*- coding: utf-8 -*-
# Xiang Wang <ramwin@qq.com>


daemon = False
workers = 16
threads = 4

pidfile = "./deploy/gunicorn_account.pid"
# 3,4变了能看出来
bind = "0.0.0.0:18124"
accesslog = "log/gunicorn_account/access.log"
errorlog = "log/gunicorn_account/error.log"
timeout = 15
