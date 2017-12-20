.. _net.sf.openfx.YUVToRGB601:

YUVToRGB601 node
================

*This documentation is for version 1.0 of YUVToRGB601.*

Description
-----------

Convert from YUV color model (ITU.BT-601) to RGB. RGB is gamma-decompressed using the sRGB Electro-Optical Transfer Function (EOTF) after conversion.

Inputs
------

+--------+-------------+----------+
| Input  | Description | Optional |
+========+=============+==========+
| Source |             | No       |
+--------+-------------+----------+

Controls
--------

.. tabularcolumns:: |>{\raggedright}p{0.2\columnwidth}|>{\raggedright}p{0.06\columnwidth}|>{\raggedright}p{0.07\columnwidth}|p{0.63\columnwidth}|

.. cssclass:: longtable

+-------------------------+---------+---------+---------------------------------------------------------------------------------------------------+
| Parameter / script name | Type    | Default | Function                                                                                          |
+=========================+=========+=========+===================================================================================================+
| Premult / ``premult``   | Boolean | Off     | Multiply the image by the alpha channel after processing. Use to get premultiplied output images. |
+-------------------------+---------+---------+---------------------------------------------------------------------------------------------------+
