import matplotlib.pyplot as plt
import numpy as np
import seaborn as sns


def cartesian_uniform_bivariate():
    num_samples = 100000

    X = np.random.rand(num_samples)
    Y = np.random.rand(num_samples)

    sns.jointplot(x=X, y=Y, marginal_kws=dict(bins=30, fill=True))
    plt.figure()
    plt.hist2d(X, Y, bins=16, density=True)

    plt.show()


def polar_to_cartesian(theta, r):
    x = r * np.cos(np.deg2rad(theta))
    y = r * np.sin(np.deg2rad(theta))
    return x, y


def polar_uniform_bivariate():
    num_samples = 100

    thetas = np.random.uniform(low=0, high=360, size=(num_samples, 1))
    radii = np.ones((num_samples, 1))
    radii = np.random.uniform(low=0, high=360, size=(num_samples, 1))
    X, Y = polar_to_cartesian(thetas, radii)
    sns.jointplot(x=X[:, 0], y=Y[:, 0], marginal_kws=dict(bins=30, fill=True))

    plt.figure()
    plt.hist2d(X[:, 0], Y[:, 0], bins=16, density=True)

    plt.show()


if __name__ == "__main__":
    cartesian_uniform_bivariate()
    polar_uniform_bivariate()
