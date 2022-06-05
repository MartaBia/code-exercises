def computepay(h, rph):
    if h <= 40:
        gross = h * rph
    else:
        gross = (40 * rph) + ((h - 40) * (rph * 1.5))
    return gross
