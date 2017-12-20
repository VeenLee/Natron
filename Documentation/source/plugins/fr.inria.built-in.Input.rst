.. _fr.inria.built-in.Input:

Input node
==========

*This documentation is for version 1.0 of Input.*

Description
-----------

This node can only be used within a Group. It adds an input arrow to the group.

Inputs
------

+-------+-------------+----------+
| Input | Description | Optional |
+=======+=============+==========+
+-------+-------------+----------+

Controls
--------

.. tabularcolumns:: |>{\raggedright}p{0.2\columnwidth}|>{\raggedright}p{0.06\columnwidth}|>{\raggedright}p{0.07\columnwidth}|p{0.63\columnwidth}|

.. cssclass:: longtable

+-------------------------+---------+---------+-----------------------------------------------------------------------------------------------------------------------------------+
| Parameter / script name | Type    | Default | Function                                                                                                                          |
+=========================+=========+=========+===================================================================================================================================+
| Optional / ``optional`` | Boolean | Off     | When checked, this input of the group will be optional, i.e. it will not be required that it is connected for the render to work. |
+-------------------------+---------+---------+-----------------------------------------------------------------------------------------------------------------------------------+
| Mask / ``isMask``       | Boolean | Off     | When checked, this input of the group will be considered as a mask. A mask is always optional.                                    |
+-------------------------+---------+---------+-----------------------------------------------------------------------------------------------------------------------------------+
