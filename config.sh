#!/bin/bash

echo export PAGER=less >> ~/.bashrc

systemctl start ssh && systemctl enable ssh

systemctl mask sleep.target suspend.target hibernate.target hybrid-sleep.target

