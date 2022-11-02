import matplotlib.pyplot as plt


def method_generate_graph(methods):
    figure = plt.figure()
    axes = figure.add_subplot(1, 1, 1)
    axes.bar(
        range(len(methods)),
        [method[1] for method in methods],
        tick_label=[method[0] for method in methods]
    )
    return figure
