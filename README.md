# Crude `ab` graphing with `gnuplot`

Quick and dirty visualisation of your [Apache Bench](https://httpd.apache.org/docs/2.4/programs/ab.html) runs with [gnuplot](http://www.gnuplot.info/).

---

## Usage

Generate a `timing.data` TSV file:

```
$ ab -n 10000 -c 15 -g timing.data 'http://example.com/'
```

Then graph it:

```
$ for f in gnuplot/*.p; do gnuplot $f; done
```

Results are put in the `graphs` subdirectory.
