from collections import OrderedDict
import numpy as np
import pickle


def display_ordered_results(d):
    """
    d: observations from shell.py
    returns: None
    Displays sequences fastest to slowest for each list size
    """
    results = {}
    for k0 in OrderedDict(sorted(d.items())):
        tmp = []
        for k1 in OrderedDict(sorted(d[k0].items())):
            tmp.append((k1, np.median(d[k0][k1]['times'])))
        tmp.sort(key=lambda tup: tup[1])
        results[k0] = tmp

    for k0 in OrderedDict(sorted(results.items())):
        print '{}\t{} - {}'.format(k0, results[k0][1][1], results[k0][-1][1])
        for tup in results[k0]:
            print '{:4s}'.format(tup[0]),
        print '\n'


def extract_box_data(d):
    results = []
    for k0 in OrderedDict(sorted(d.items())):
        results.append([k0])
        for k1 in OrderedDict(sorted(d[k0].items())):
            results[-1] += d[k0][k1]['times']

    dset = np.asarray(results)
    dset = dset.transpose()
    np.savetxt('/Users/philiphuffman/shell21/box.dat', dset)


def extract_size_times(d):
    """
    d: observations from shell.py
    returns: None
    Writes a numpy array to be used by Gnuplot
    """
    xy_lst = []
    for k0 in OrderedDict(sorted(d.items())):
        xy_lst.append([float(k0)])
        for k1 in OrderedDict(sorted(d[k0].items())):
            xy_lst[-1].append(np.median(d[k0][k1]['times']))

    dset = np.asarray(xy_lst)
    np.savetxt('/Users/philiphuffman/shell21/TimevSize.dat', dset)


def main():
    """
    reads observations from shell.py Also prints all sequences ordered by
    median run time, for each list
    """
    with open('observations.pickle', 'rb') as handle:
        d = pickle.load(handle)

    display_ordered_results(d)

    extract_size_times(d)

    extract_box_data(d)


if __name__ == '__main__':
    main()
