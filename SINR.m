%��������ȼ���

%��վ���m��CUE���ŵ�����
[hmb,hmb_big]=loss_all_big_CUE(500,8);
%��վ���k��DUE���ŵ�����
[hkb,hkb_big]=loss_all_big_CUE(500,8);
%��k��DUE֮����ŵ�����
[hk,hk_big]=loss_all_big_DUE(70,3);
%��m��DUE���k��CUE֮����ŵ�����
[hmk,hmk_big]=loss_all_big_DUE(70,3);
%CUE��������ȼ���
rmc_mat=zeros(M,K);
for i=1:M
  %rmc_mat(i,:)=PMC_best_dbm(i)*1e-3+hmb-(N0_dbm*1e-3+PKD_best_dbm'.*hkb);
  %rmc_mat(i,:)=PMC_best_dbm(i).*hmb./(N0_dbm+PKD_best_dbm'.*hkb);
  %ת��Ϊ������λ���м���
  rmc_mat(i,:)=power(10,PMC_best_dbm(i)/10).*1e-3.*power(10,hmb/10)./(power(10,N0_dbm/10).*1e-3+(power(10,PKD_best_dbm/10).*1e-3)'.*power(10,hmb/10));
end
%DUE���������
rkd_mat=zeros(M,K);
for i=1:M
  %rkd_mat(i,:)=PKD_best_dbm(i).*hkb./(N0_dbm+PMC_best_dbm'.*hmk);
  %ת��Ϊ������λ���м���
  rmc_mat(i,:)=power(10,PKD_best_dbm(i)/10)*1e-3.*power(10,hkb/10)./(power(10,N0_dbm/10).*1e-3+(power(10,PKD_best_dbm/10).*1e-3)'.*power(10,hmk/10));
end