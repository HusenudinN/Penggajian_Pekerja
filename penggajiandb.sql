CREATE TABLE rekening (
	NO INT PRIMARY KEY,
	Nama VARCHAR (30) NOT NULL,
	Saldo DOUBLE NOT NULL DEFAULT 0
)ENGINE=INNODB;

INSERT INTO rekening VALUES (1,"Joko",1000000),(2,"Susilo",2500000),`poliklinik``pasien`
			    (3,"Bambang",349960), (4,"Asep",2500000),(5,"John Bambang",340000),
			    (6,"Jojon",1000000),(7,"Aceng",2500068),(8,"Imam",2490000),
`karyawan`			    (9,"Dadang",290000),(10,"Dion",3900000);

CREATE TABLE TransaksiTransfer(
	NoTransaksi INT AUTO_INCREMENT PRIMARY KEY,
	WaktuTransaksi DATETIME,
	NoRekPengirim INT,
	NoRekPenerima INT,
	BesarTransfer DOUBLE
)ENGINE=INNODB;

ALTER TABLE TransaksiTransfer ADD CONSTRAINT 
foreign key (NoRekPengirim) references rekening(No)
on update cascade on delete no action

alter table TransaksiTransfer add constraint 
foreign key (NoRekPenerima) references rekening(NO)
on update cascade on delete no action

create table HistoryTransaksi(
	Waktu datetime,
	NoRekPengirim int,
	NoRekPenerima int,
	Jumlah double,
	AlamatTransfer varchar(20)
)engine = innodb

call Transfer(1,3,40000,@STATUS);
call Transfer(3,2,450000,@STATUS);
call Transfer(4,4,50000,@STATUS);
call Transfer(2,5,24000,@STATUS);
call Transfer(5,9,32000,@STATUS);
call Transfer(6,10,25000,@STATUS);
call Transfer(8,7,23400,@STATUS);
call Transfer(9,1,25000,@STATUS);
call Transfer(7,8,20500,@STATUS);
call Transfer(10,6,25000,@STATUS);
select @STATUS;

select * from historytransaksi;

update rekening set no=123 where no=10;
select *from transaksitransfer;

UPDATE rekening SET NO=60 WHERE NO=6;
SELECT *FROM transaksitransfer;
