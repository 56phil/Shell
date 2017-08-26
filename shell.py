from collections import OrderedDict
import copy
from my_obs import data
import numpy as np
import pickle
import time


def disp_results(d):
    """
    d: dictionary of observations
    returns: None
    """
    e = ' {:0.4e}'
    print '\nfact        min       mean        max        std     median'
    for k in OrderedDict(sorted(d.items())):
        ln = '{:3s}'.format(k)
        a = d[k]['times']
        ln += e.format(np.amin(a))
        ln += e.format(np.mean(a))
        ln += e.format(np.amax(a))
        ln += e.format(np.std(a))
        ln += e.format(np.median(a))
        print ln


def make_seq(n, fact):
    """
    n: int (size of list to be sorted)
    fact: float (gap size)
    returns: list of ints
    """
    s = [1, 4, 10, 23, 57, 132, 301, 701, 1750]
    my_limit = n // 3
    while s[-1] <= my_limit:
        s.append(int(s[-1] * fact))
    s.reverse()
    return s


def main():
    """
    builds & serializes results of sort timings in obs
    """
    n = 1 << 18
    all_obs = {}
    r = 6
    for i in range(r):
        t = n >> 4
        t = np.random.randint(n-t, n+t)
        z = 7
        print '\nt = {}, t // 3 = {}, {} of {}'.format(t, t // 3, i + 1, r)
        test_arrays = np.random.randint(-(n << 4), n << 4, size=(z, t))

        obs = {'2.10': {}, '2.15': {}, '2.20': {}, '2.05': {}, '2.85': {},
               '2.25': {}, '2.30': {}, '2.35': {}, '2.70': {}, '2.90': {},
               '2.40': {}, '2.45': {}, '2.50': {}, '2.75': {}, '2.95': {},
               '2.55': {}, '2.60': {}, '2.65': {}, '2.80': {}, '2.00': {},
               '3.00': {}}

        for k in OrderedDict(sorted(obs.items())):
            gap_factor = float(k)
            s = make_seq(n, gap_factor)
            print '{} {:4s} {}'.format(time.strftime('%H:%M:%S',
                                                     time.localtime()), k, s)
            obs[k]['seq'] = s
            obs[k]['times'] = []
            obs[k]['inner'] = []
            obs[k]['outer'] = []
            for test_array in test_arrays:
                a = shell_sort(copy.deepcopy(test_array), s)
                if not verify(a.a):
                    print '{} not in sequence.'.format(k)
                obs[k]['times'].append(a.t)
                obs[k]['inner'].append(a.inner)
                obs[k]['outer'].append(a.outer)

        disp_results(obs)
        all_obs[t] = obs
        with open('observations.pickle', 'wb') as handle:
            pickle.dump(all_obs, handle, protocol=pickle.HIGHEST_PROTOCOL)

        n <<= 1

    print 'Finished at {}'.format(time.strftime('%H:%M:%S', time.localtime()))


def shell_sort(lst, gaps):
    """
    lst: list to be ordered
    gaps: liat of ints gaps[-1] must be 1
    returns: names tuple
    """
    inner = 0
    outer = 0
    t = time.time()
    for gap in gaps:
        for i in range(gap, len(lst)):
            j = i
            temp = lst[j]
            outer += 1
            while j >= gap and lst[j - gap] > temp:
                inner += 1
                lst[j] = lst[j - gap]
                j -= gap
            lst[j] = temp
    return data(time.time() - t, inner, outer, lst)


def verify(lst):
    """
    lst: list of comparables
    returns: bool
    """
    for i in range(1, len(lst)):
        if lst[i-1] > lst[i]:
            return False
        return True


if __name__ == '__main__':
    main()
