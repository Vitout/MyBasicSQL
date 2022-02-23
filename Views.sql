CREATE VIEW vw_goods AS
  SELECT id_goods,
    goods,
    id_categories
  FROM goods AS g
  
CREATE VIEV vw_goods_categories AS
  SELECT id_categories,
    categories_name,
    categories_description
  FROM goods_categories AS gc

CREATE VIEW vw_goods_goods_categories AS
  SELECT g.goods,
    g.id_categories,
    gc.categories_name,
    COUNT(goods) AS cnt
  FROM vw_goods AS g
    INNER JOIN vw_goods_categories AS gc
      ON gc.id_categories = g.id_categories
        GROUP BY id_categories
