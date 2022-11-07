import matplotlib.pyplot as plt


def method_generate_bar_graph(methods):
    """
    This method will generate a bar graph.

    The methods parameter is a list of tuples with the following structure:
    """
    figure = plt.figure()
    axes = figure.add_subplot(1, 1, 1)
    axes.bar(
        range(len(methods)),
        [method[1] for method in methods],
        tick_label=[method[0] for method in methods]
    )
    return figure


def method_generate_bar_horizontal_chart(methods, chart_title, x_label):
    """
    This method will generate a bar horizontal graph.

    The methods parameter is a list of tuples with the following structure:
    """
    figure = plt.figure()
    axes = figure.add_subplot(1, 1, 1)
    axes.barh(
        range(len(methods)),
        len(methods),
        tick_label=[method[0] for method in methods]
    )
    axes.set_xlabel(x_label)
    axes.set_title(chart_title)
    return figure


def method_generate_pie_chart(methods):
    """
    This method will generate a pie chart.

    The methods parameter is a list of tuples with the following structure:
    """
    figure = plt.figure()
    axes = figure.add_subplot(1, 1, 1)
    axes.pie(
        [method[2] for method in methods],
        autopct='%1.1f%%',
        labels=[method[0] for method in methods],
        shadow=True,
    )

    return figure
