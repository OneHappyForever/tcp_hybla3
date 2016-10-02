obj-m += tcp_hybla3.o

all:
		make -C /lib/modules/3.13.0-29-generic/build M=$(PWD) modules

clean:
		make -C /lib/modules/3.13.0-29-generic/build M=$(PWD) clean

install:
		install tcp_hybla3.ko /lib/modules/3.13.0-29-generic/kernel/net/ipv4
		insmod /lib/modules/3.13.0-29-generic/kernel/net/ipv4/tcp_hybla3.ko
		depmod -a
