CREATE VIEW vw_goods AS
  SELECT id_goods,
    goods,
    id_categories
  FROM goods AS g
