%% Calculating episode graphs
clc; clear all; close all;

exp1 = csvread('exp1_standard/list_worker_0',0,1);
nopain = csvread('exp2_nopain/list_worker_0',0,1);

exp1 = exp1(1:2000,:);
nopain = nopain(1:2000,:);

exp1_x = (1:1:2000)';
nopain_x = (1:1:2000)';

exp1_mean = zeros(length(exp1),1);
total_rewards = 0;
for i = 1:length(exp1)
    total_rewards = total_rewards + exp1(i,2);
    exp1_mean(i) = total_rewards / i;
end

nopain_mean = zeros(length(nopain),1);
total_rewards2 = 0;
for i = 1:length(nopain)
    total_rewards2 = total_rewards2 + nopain(i,2);
    nopain_mean(i) = total_rewards2 / i;
end

figure;
plot(exp1_x,exp1_mean); hold on;
plot(nopain_x,nopain_mean);