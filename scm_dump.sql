/*
SQLyog Ultimate v8.82 
MySQL - 5.1.45-community : Database - scm
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`scm` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `scm`;

/*Table structure for table `feedback` */

DROP TABLE IF EXISTS `feedback`;

CREATE TABLE `feedback` (
  `retailer_id` varchar(10) DEFAULT NULL,
  `sub_msg` varchar(100) DEFAULT NULL,
  `msg` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `feedback` */

insert  into `feedback`(`retailer_id`,`sub_msg`,`msg`) values ('103','hello',' how are you');

/*Table structure for table `invoice` */

DROP TABLE IF EXISTS `invoice`;

CREATE TABLE `invoice` (
  `receipt_id` int(11) NOT NULL,
  `ammount` int(11) DEFAULT NULL,
  `order_date` date DEFAULT NULL,
  `sales_agent_id` int(11) DEFAULT NULL,
  `retailer_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`receipt_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `invoice` */

insert  into `invoice`(`receipt_id`,`ammount`,`order_date`,`sales_agent_id`,`retailer_id`) values (2002,6000,'2013-03-26',104,103),(2003,20000,'2013-03-27',104,103),(2005,25000,'2013-03-27',104,103),(2011,2700,'2013-03-29',107,103),(2013,3000,'2013-03-29',107,103),(2017,36000,'2013-03-31',104,103),(2018,9000,'2013-04-01',104,103);

/*Table structure for table `login` */

DROP TABLE IF EXISTS `login`;

CREATE TABLE `login` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `uname` varchar(30) DEFAULT NULL,
  `pswd` varchar(30) DEFAULT NULL,
  `tpe` varchar(20) DEFAULT NULL,
  `approve` varchar(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=114 DEFAULT CHARSET=latin1;

/*Data for the table `login` */

insert  into `login`(`id`,`uname`,`pswd`,`tpe`,`approve`) values (102,'ajay','ajay','D','1'),(103,'vijay','vijay','R','1'),(104,'rajeev','rajeev','S','1'),(105,'surbhi','surbhi','D','0'),(106,'devendra','devendra','R','1'),(107,'shivani','shivani','S','1'),(108,'garima','garima','D','0'),(109,'jaychand','jaychand','R','0'),(110,'','','User Type','0'),(111,'deepak','deepak','S','1'),(112,'swati','swati','R','0'),(113,'vivek','vivek','D','0');

/*Table structure for table `order_number` */

DROP TABLE IF EXISTS `order_number`;

CREATE TABLE `order_number` (
  `order_no` int(4) NOT NULL AUTO_INCREMENT,
  `status` varchar(1) DEFAULT '0',
  PRIMARY KEY (`order_no`)
) ENGINE=InnoDB AUTO_INCREMENT=2019 DEFAULT CHARSET=latin1;

/*Data for the table `order_number` */

insert  into `order_number`(`order_no`,`status`) values (1,NULL),(2,NULL),(2000,NULL),(2001,NULL),(2002,'1'),(2003,'1'),(2004,'0'),(2005,'1'),(2006,'0'),(2007,'0'),(2008,'0'),(2009,'0'),(2010,'0'),(2011,'1'),(2012,'0'),(2013,'1'),(2014,'0'),(2015,'0'),(2016,'0'),(2017,'1'),(2018,'1');

/*Table structure for table `order_trans` */

DROP TABLE IF EXISTS `order_trans`;

CREATE TABLE `order_trans` (
  `order_no` varchar(4) NOT NULL,
  `order_date` varchar(30) DEFAULT NULL,
  `product_name` varchar(30) DEFAULT NULL,
  `sales_agent_id` int(11) DEFAULT NULL,
  `retailer_id` int(11) DEFAULT NULL,
  `item_no` int(4) DEFAULT NULL,
  `price` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `order_trans` */

insert  into `order_trans`(`order_no`,`order_date`,`product_name`,`sales_agent_id`,`retailer_id`,`item_no`,`price`) values ('56','hjk','7',NULL,9,66,8),('56','2013-03-26','7',NULL,9,66,8),('2002','2013-03-26','mobile',NULL,103,3,6000),('2002','2013-03-26','c123',NULL,103,5,25000),('2002','2013-03-26','mobile',NULL,103,2,4000),('2002','2013-03-27','mobile',NULL,103,7,14000),('2002','2013-03-27','c123',NULL,103,6,30000),('2002','2013-03-27','c123',NULL,103,43,215000),('2002','2013-03-27','mobile',NULL,103,3,6000),('2003','2013-03-27','c123',NULL,103,4,20000),('2004','2013-03-27','mobile',NULL,103,8,16000),('2005','2013-03-27','c123',NULL,103,5,25000),('2005','2013-03-27','mobile',NULL,103,5,10000),('2006','2013-03-27','mobile',NULL,103,3,6000),('2007','2013-03-27','mobile',NULL,103,33,66000),('2008','2013-03-27','mobile',NULL,103,4,8000),('2009','2013-03-27','mobile',NULL,103,5,10000),('2010','2013-03-27','mobile',NULL,103,43,86000),('2010','2013-03-28','mobile',NULL,103,5,10000),('2010','2013-03-28','mobile',NULL,103,6,12000),('2010','2013-03-28','mobile',NULL,103,8,16000),('2010','2013-03-28','c123',NULL,103,9,45000),('2010','2013-03-28','c123',NULL,103,6,30000),('2010','2013-03-28','c123',NULL,103,22,110000),('2010','2013-03-28','c123',NULL,103,22,110000),('2010','2013-03-28','mobile',NULL,103,2,4000),('2011','2013-03-29','keyboard',NULL,103,9,2700),('2011','2013-03-29','HCl-Laptop',NULL,103,9,306000),('2011','2013-03-29','mc132',NULL,103,9,45000),('2011','2013-03-29','mc132',NULL,103,4,20000),('2012','2013-03-29','keyboard',NULL,103,8,2400),('2012','2013-03-29','mc132',NULL,103,8,40000),('2013','2013-03-29','keyboard',NULL,103,10,3000),('2013','2013-03-29','mc132',NULL,103,10,50000),('2013','2013-03-29','HCl-Laptop',NULL,103,3,102000),('2014','2013-03-29','keyboard',NULL,103,6,1800),('2014','2013-03-29','c477',NULL,103,9,27000),('2014','2013-03-29','c477',NULL,103,10,30000),('2014','2013-03-29','HCl-Laptop',NULL,103,7,238000),('2015','2013-03-31','keyboard',NULL,106,10,3000),('2015','2013-03-31','key pad',NULL,106,20,3000),('2015','2013-03-31','c477',NULL,106,10,30000),('2015','2013-03-31','key pad',NULL,106,15,2250),('2016','2013-03-31','lenovo',NULL,106,2,46000),('2016','2013-03-31','lenovo',NULL,106,5,115000),('2017','2013-03-31','c477',NULL,103,12,36000),('2017','2013-03-31','mobile LG-200',NULL,103,56,196000),('2017','2013-03-31','key pad',NULL,103,8,1200),('2017','2013-03-31','lenovo',NULL,103,10,230000),('2018','2013-04-01','c477',NULL,103,3,9000),('2018','2013-04-02','sumsung galexy',NULL,103,50,350000),('2018','2013-04-02','lenovo',NULL,103,10,230000),('2018','2013-04-02','key pad',NULL,103,30,4500);

/*Table structure for table `product_master` */

DROP TABLE IF EXISTS `product_master`;

CREATE TABLE `product_master` (
  `product_id` int(4) NOT NULL AUTO_INCREMENT,
  `product_name` varchar(30) DEFAULT NULL,
  `product_cat` varchar(30) DEFAULT NULL,
  `product_price` int(30) DEFAULT NULL,
  `product_color` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

/*Data for the table `product_master` */

insert  into `product_master`(`product_id`,`product_name`,`product_cat`,`product_price`,`product_color`) values (6,'c477','mobile',3000,'blue'),(7,'mobile LG-200','mobile',3500,'green'),(8,'key pad','accessaries',150,'black'),(9,'lenovo','laptop',23000,'grey'),(10,'sumsung galexy','mobile',7000,'white');

/*Table structure for table `registration` */

DROP TABLE IF EXISTS `registration`;

CREATE TABLE `registration` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `nname` varchar(30) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `contact` varchar(12) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `city` varchar(30) DEFAULT NULL,
  `state` varchar(30) DEFAULT NULL,
  `pin` varchar(11) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=114 DEFAULT CHARSET=latin1;

/*Data for the table `registration` */

insert  into `registration`(`id`,`nname`,`email`,`contact`,`address`,`city`,`state`,`pin`,`gender`) values (100,'gfhf',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(101,'8','9','98','87','7','78','78','Male'),(102,'ajay','ajay@gmail.com','88987887','lucknow','lucknow','uttar Pradesh','768787','Male'),(103,'vijay','vijay@gmail.com','6798798','kanpur','kanpur','uttar Pradesh','587585','Male'),(104,'Rajeev','rajeev@gmail.com','798797898','lucknow','lucknow','uttar Pradesh','8999998','Male'),(105,'surbhi gupta','surbh@gmail.com','9008888789','gomati nagar lucknow','lucknow','uttar Pradesh','','femail'),(106,'Devendra','devendra@gmail.com','890987878','aliganj lucknow','lucknow','uttar Pradesh','200011','Male'),(107,'shivani','surbh@gmail.com','90002222','lucknow','lucknow','uttar Pradesh','100220','femail'),(108,'garima','garima@gmail.com','8004188877','jankipuram','lucknow','up','226010','femail'),(109,'jaychand','jaychand@gmail.com','879879','lucknow','lucknow','uttar Pradesh','800892','Male'),(110,'deepak','devendra@gmail.com','9090909090','l','','','',NULL),(111,'deepak','devendra@gmail.com','9090909090','lucknow','lucknow','uttar Pradesh','','femail'),(112,'swati','surbhi@gmail.com','1020304050','lucknow','lucknow','up','100220','Male'),(113,'vivek shukla','vijay@gmail.com','78798778','lucknow','lucknow','uttar Pradesh','100220','Male');

/*Table structure for table `sales_agent_order` */

DROP TABLE IF EXISTS `sales_agent_order`;

CREATE TABLE `sales_agent_order` (
  `order_no` varchar(20) DEFAULT NULL,
  `sales_agent_id` varchar(20) DEFAULT NULL,
  `staus` int(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `sales_agent_order` */

insert  into `sales_agent_order`(`order_no`,`sales_agent_id`,`staus`) values ('2002','104',0),('2003','104',0),('2013','107',0),('2011','107',0),('2017','104',0),('2005','104',0),('2018','104',0);

/*Table structure for table `stock` */

DROP TABLE IF EXISTS `stock`;

CREATE TABLE `stock` (
  `stock_id` int(4) NOT NULL AUTO_INCREMENT,
  `product_id` int(4) DEFAULT NULL,
  `prod_avl` int(4) DEFAULT NULL,
  `reorder` int(4) DEFAULT NULL,
  PRIMARY KEY (`stock_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `stock` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
