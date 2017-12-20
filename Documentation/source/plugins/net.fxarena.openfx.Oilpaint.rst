.. _net.fxarena.openfx.Oilpaint:

Oilpaint node
=============

|pluginIcon| 

*This documentation is for version 2.1 of Oilpaint.*

Description
-----------

Oilpaint filter node.

Inputs
------

+--------+-------------+----------+
| Input  | Description | Optional |
+========+=============+==========+
| Source |             | No       |
+--------+-------------+----------+
| Mask   |             | Yes      |
+--------+-------------+----------+

Controls
--------

.. tabularcolumns:: |>{\raggedright}p{0.2\columnwidth}|>{\raggedright}p{0.06\columnwidth}|>{\raggedright}p{0.07\columnwidth}|p{0.63\columnwidth}|

.. cssclass:: longtable

+-------------------------+---------+---------+-------------------------------------------------------------------------------------------------------+
| Parameter / script name | Type    | Default | Function                                                                                              |
+=========================+=========+=========+=======================================================================================================+
| Radius / ``radius``     | Double  | 1       | Adjust radius                                                                                         |
+-------------------------+---------+---------+-------------------------------------------------------------------------------------------------------+
| OpenMP / ``openmp``     | Boolean | Off     | Enable/Disable OpenMP support. This will enable the plugin to use as many threads as allowed by host. |
+-------------------------+---------+---------+-------------------------------------------------------------------------------------------------------+

.. |pluginIcon| image:: net.fxarena.openfx.Oilpaint.png
   :width: 10.0%
