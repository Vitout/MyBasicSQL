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
