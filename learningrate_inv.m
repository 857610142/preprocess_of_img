lr_based = 1e-6;
gamma = 0.00001;
power = 0.5;
x = [1:1:500000]
lr = lr_based * (1 + gamma * x).^(-power);
plot(x,lr);