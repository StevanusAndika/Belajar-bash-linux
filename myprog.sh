#!/bin/sh
# myprog.sh - Program untuk memproses parameter command

case "$1" in
    start)
        echo "Memulai proses..."
        ;;
    stop)
        echo "Menghentikan proses..."
        ;;
    restart)
        echo "Memulai ulang proses..."
        ;;
    reload)
        echo "Memuat ulang konfigurasi..."
        ;;
    status)
        echo "Menampilkan status proses..."
        ;;
    *)
        echo "Error: Parameter tidak valid" >&2
        echo "Usage: $0 {start|stop|restart|reload|status}" >&2
        exit 1
        ;;
esac

exit 0
