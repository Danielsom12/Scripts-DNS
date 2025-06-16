#!/bin/bash

echo "Insira o RANGE (ex: 192.168.1.0/24):"
read RANGE

echo "Verificando hosts ativos em $RANGE..."
nmap -sn $RANGE | grep "Nmap scan report for" | awk '{print $5}'

echo "...sexy.tool.."
