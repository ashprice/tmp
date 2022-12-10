import numpy as np
import plotly.express as px
from scipy.optimize import curve_fit

hours = list(range(0, 6560))
frs = []
for h in hours:
    if h <= 25:
        frs.append(1 + (h * 0.09))
    elif h <= 4373:
        frs.append(22.22222222222222222222 + ((h - 25) / (4373 - 25)) * (84 - 22.22222222222222222222))
    elif h <= 6560:
        frs.append(84 + ((h - 4373) / (6560 - 4373)) * (250 - 84))
    else:
        frs.append(250)

def logistic(x, a, b, c, d, k):
    return a / (1 + np.exp(-k * (x - d))) + c

params, params_covariance = curve_fit(logistic, hours, frs, p0=[250, 0, 0, 0, 1])

fig = px.line(x=hours, y=frs)
fig.add_scatter(x=hours, y=logistic(hours, *params), mode='lines', name='fitted curve')
fig.show()
