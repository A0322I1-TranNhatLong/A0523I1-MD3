-- Task 6. Hiển thị ma_dich_vu, ten_dich_vu, dien_tich, chi_phi_thue, ten_loai_dich_vu của tất cả các loại dịch vụ 
-- chưa từng được khách hàng thực hiện đặt từ quý 1 của năm 2021 (Quý 1 là tháng 1, 2, 3).
select dv.ma_dich_vu, dv.ten_dich_vu, dv.dien_tich, dv.chi_phi_thue, ldv.ten_loai_dich_vu
from dich_vu dv
left join loai_dich_vu ldv on dv.ma_loai_dich_vu = ldv.ma_loai_dich_vu
left join hop_dong hd on dv.ma_dich_vu = hd.ma_dich_vu and hd.ma_dich_vu 
where dv.ma_dich_vu not in (select hop_dong.ma_dich_vu from hop_dong where year(hop_dong.ngay_lam_hop_dong) = 2021 and month(hop_dong.ngay_lam_hop_dong) in (1, 2, 3))
group by dv.ma_dich_vu;