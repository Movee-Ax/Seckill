# 数据库建表

# 商品表
CREATE TABLE `t_goods`
(
    `id`           BIGINT(20) NOT NULL AUTO_INCREMENT COMMENT '商品ID',
    `goods_name`   VARCHAR(16)    DEFAULT NULL COMMENT '商品名称',
    `goods_title`  VARCHAR(64)    DEFAULT NULL COMMENT '商品标题',
    `good_img` VARCHAR(64) DEFAULT NULL COMMENT '商品图片',
    `goods_detail` LONGTEXT COMMENT '商品详情',
    `goods_price`  DECIMAL(10, 2) DEFAULT '0.00' COMMENT '商品价格',
    `goods_stock`  INT(11)        DEFAULT '0' COMMENT '商品库存，-1表示没有限制',
    PRIMARY KEY (`id`)
) ENGINE = INNODB
  AUTO_INCREMENT = 3
  DEFAULT CHARSET = utf8mb4;

# 订单表
CREATE TABLE `t_order`
(
    `id`               BIGINT(20) NOT NULL AUTO_INCREMENT COMMENT '订单ID',
    `user_id`          BIGINT(20)    DEFAULT NULL COMMENT '用户ID',
    `goods_id`         BIGINT(20)     DEFAULT NULL COMMENT '商品ID',
    `delivery_addr_id` BIGINT(20)     DEFAULT NULL COMMENT '收货地址ID',
    `goods_name`       VARCHAR(10)    DEFAULT NULL COMMENT '商品数量',
    `goods_price`      DECIMAL(10, 2) DEFAULT '0.00' COMMENT '商品单价',
    `order_channel`    TINYINT(4)     DEFAULT '0' COMMENT '1pc,2android,3ios',
    `status`           TINYINT(4)     DEFAULT '0' COMMENT '订单状态：0新建未支付，1已支付，2已发货，3已收获，4已退款，5已完成',
    `create_date`      datetime       DEFAULT NULL COMMENT '订单的创建时间',
    `pay_date`         datetime       DEFAULT NULL COMMENT '支付时间',
    PRIMARY KEY (`id`)
) ENGINE = INNODB
  AUTO_INCREMENT = 12
  DEFAULT CHARSET = utf8mb4;

# 秒杀商品表
CREATE TABLE `t_seckill_order`
(
    `id`            BIGINT(20) NOT NULL AUTO_INCREMENT COMMENT '秒杀商品ID',
    `goods_id`      BIGINT(20)     DEFAULT NULL COMMENT '商品ID',
    `seckill_price` DECIMAL(10, 2) DEFAULT '0.00' COMMENT '秒杀价',
    `stock_count`   INT(10)        DEFAULT NULL COMMENT '库存数量',
    `start_date`    datetime       DEFAULT NULL COMMENT '秒杀开始时间',
    `end_date`      datetime       DEFAULT NULL COMMENT '秒杀结束时间',
    PRIMARY KEY (`id`)
) ENGINE = INNODB
  AUTO_INCREMENT = 3
  DEFAULT CHARSET = utf8mb4;

# 秒杀订单表
CREATE TABLE `t_seckill_order`
(
    `id`       BIGINT(20) NOT NULL AUTO_INCREMENT COMMENT '秒杀订单ID',
    `user_id`  BIGINT(20) DEFAULT NULL COMMENT '用户ID',
    `order_id` BIGINT(20)  DEFAULT NULL COMMENT '订单ID',
    `goods_id` BIGINT(20)  DEFAULT NULL COMMENT '商品ID',
    PRIMARY KEY (`id`)
) ENGINE = INNODB
  AUTO_INCREMENT = 3
  DEFAULT CHARSET = utf8mb4;