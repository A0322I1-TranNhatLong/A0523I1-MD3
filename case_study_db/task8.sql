-- Task 8. Hiển thị thông tin ho_ten khách hàng có trong hệ thống, với yêu cầu ho_ten không trùng nhau.
-- Cách 1:
select ho_ten from khach_hang group by ho_ten;
-- Cách 2:
select ho_ten from khach_hang union select ho_ten from khach_hang;
-- Cách 3:
select distinct ho_ten from khach_hang;