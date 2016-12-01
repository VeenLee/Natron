#This Source Code Form is subject to the terms of the Mozilla Public
#License, v. 2.0. If a copy of the MPL was not distributed with this
#file, You can obtain one at http://mozilla.org/MPL/2.0/.


TARGET = ceres
TEMPLATE = lib
CONFIG += staticlib
CONFIG -= qt

CONFIG += ceres-flags glog-flags gflags-flags

include(../../global.pri)
include(../../libs.pri)
include(../../config.pri)

CONFIG -= warn_on

SOURCES += \
	internal/ceres/array_utils.cc \
	internal/ceres/blas.cc \
	internal/ceres/block_evaluate_preparer.cc \
	internal/ceres/block_jacobi_preconditioner.cc \
	internal/ceres/block_jacobian_writer.cc \
	internal/ceres/block_random_access_dense_matrix.cc \
	internal/ceres/block_random_access_diagonal_matrix.cc \
	internal/ceres/block_random_access_matrix.cc \
	internal/ceres/block_random_access_sparse_matrix.cc \
	internal/ceres/block_sparse_matrix.cc \
	internal/ceres/block_structure.cc \
	internal/ceres/c_api.cc \
	internal/ceres/callbacks.cc \
	internal/ceres/cgnr_solver.cc \
	internal/ceres/compressed_col_sparse_matrix_utils.cc \
	internal/ceres/compressed_row_jacobian_writer.cc \
	internal/ceres/compressed_row_sparse_matrix.cc \
	internal/ceres/conditioned_cost_function.cc \
	internal/ceres/conjugate_gradients_solver.cc \
	internal/ceres/coordinate_descent_minimizer.cc \
	internal/ceres/corrector.cc \
	internal/ceres/covariance.cc \
	internal/ceres/covariance_impl.cc \
	internal/ceres/dense_normal_cholesky_solver.cc \
	internal/ceres/dense_qr_solver.cc \
	internal/ceres/dense_sparse_matrix.cc \
	internal/ceres/detect_structure.cc \
	internal/ceres/dogleg_strategy.cc \
	internal/ceres/dynamic_compressed_row_jacobian_writer.cc \
	internal/ceres/dynamic_compressed_row_sparse_matrix.cc \
	internal/ceres/evaluator.cc \
	internal/ceres/file.cc \
	internal/ceres/generated/partitioned_matrix_view_d_d_d.cc \
	internal/ceres/generated/schur_eliminator_d_d_d.cc \
	internal/ceres/gradient_checker.cc \
	internal/ceres/gradient_checking_cost_function.cc \
	internal/ceres/gradient_problem.cc \
	internal/ceres/gradient_problem_solver.cc \
	internal/ceres/implicit_schur_complement.cc \
	internal/ceres/is_close.cc \
	internal/ceres/iterative_schur_complement_solver.cc \
	internal/ceres/lapack.cc \
	internal/ceres/levenberg_marquardt_strategy.cc \
	internal/ceres/line_search.cc \
	internal/ceres/line_search_direction.cc \
	internal/ceres/line_search_minimizer.cc \
	internal/ceres/line_search_preprocessor.cc \
	internal/ceres/linear_least_squares_problems.cc \
	internal/ceres/linear_operator.cc \
	internal/ceres/linear_solver.cc \
	internal/ceres/local_parameterization.cc \
	internal/ceres/loss_function.cc \
	internal/ceres/low_rank_inverse_hessian.cc \
	internal/ceres/minimizer.cc \
	internal/ceres/normal_prior.cc \
	internal/ceres/parameter_block_ordering.cc \
	internal/ceres/partitioned_matrix_view.cc \
	internal/ceres/polynomial.cc \
	internal/ceres/preconditioner.cc \
	internal/ceres/preprocessor.cc \
	internal/ceres/problem.cc \
	internal/ceres/problem_impl.cc \
	internal/ceres/program.cc \
	internal/ceres/reorder_program.cc \
	internal/ceres/residual_block.cc \
	internal/ceres/residual_block_utils.cc \
	internal/ceres/schur_complement_solver.cc \
	internal/ceres/schur_eliminator.cc \
	internal/ceres/schur_jacobi_preconditioner.cc \
	internal/ceres/scratch_evaluate_preparer.cc \
	internal/ceres/solver.cc \
	internal/ceres/solver_utils.cc \
	internal/ceres/sparse_matrix.cc \
	internal/ceres/sparse_normal_cholesky_solver.cc \
	internal/ceres/split.cc \
	internal/ceres/stringprintf.cc \
	internal/ceres/triplet_sparse_matrix.cc \
	internal/ceres/trust_region_minimizer.cc \
	internal/ceres/trust_region_preprocessor.cc \
	internal/ceres/trust_region_step_evaluator.cc \
	internal/ceres/trust_region_strategy.cc \
	internal/ceres/types.cc \
	internal/ceres/wall_time.cc \

#Add these source files if doing bundle adjustements, these are template specializations for common cases (6-parameter cameras and 3-parameter points)
#		 internal/ceres/generated/partitioned_matrix_view_2_2_2.cc \
#		 internal/ceres/generated/partitioned_matrix_view_2_2_3.cc \
#		 internal/ceres/generated/partitioned_matrix_view_2_2_4.cc \
#		 internal/ceres/generated/partitioned_matrix_view_2_2_d.cc \
#		 internal/ceres/generated/partitioned_matrix_view_2_3_3.cc \
#		 internal/ceres/generated/partitioned_matrix_view_2_3_4.cc \
#		 internal/ceres/generated/partitioned_matrix_view_2_3_9.cc \
#		 internal/ceres/generated/partitioned_matrix_view_2_3_d.cc \
#		 internal/ceres/generated/partitioned_matrix_view_2_4_3.cc \
#		 internal/ceres/generated/partitioned_matrix_view_2_4_4.cc \
#		 internal/ceres/generated/partitioned_matrix_view_2_4_8.cc \
#		 internal/ceres/generated/partitioned_matrix_view_2_4_9.cc \
#		 internal/ceres/generated/partitioned_matrix_view_2_4_d.cc \
#		 internal/ceres/generated/partitioned_matrix_view_2_d_d.cc \
#		 internal/ceres/generated/partitioned_matrix_view_4_4_2.cc \
#		 internal/ceres/generated/partitioned_matrix_view_4_4_3.cc \
#		 internal/ceres/generated/partitioned_matrix_view_4_4_4.cc \
#		 internal/ceres/generated/partitioned_matrix_view_4_4_d.cc \
#		 internal/ceres/generated/schur_eliminator_2_2_2.cc \
#		 internal/ceres/generated/schur_eliminator_2_2_3.cc \
#		 internal/ceres/generated/schur_eliminator_2_2_4.cc \
#		 internal/ceres/generated/schur_eliminator_2_2_d.cc \
#		 internal/ceres/generated/schur_eliminator_2_3_3.cc \
#		 internal/ceres/generated/schur_eliminator_2_3_4.cc \
#		 internal/ceres/generated/schur_eliminator_2_3_9.cc \
#		 internal/ceres/generated/schur_eliminator_2_3_d.cc \
#		 internal/ceres/generated/schur_eliminator_2_4_3.cc \
#		 internal/ceres/generated/schur_eliminator_2_4_4.cc \
#		 internal/ceres/generated/schur_eliminator_2_4_8.cc \
#		 internal/ceres/generated/schur_eliminator_2_4_9.cc \
#		 internal/ceres/generated/schur_eliminator_2_4_d.cc \
#		 internal/ceres/generated/schur_eliminator_2_d_d.cc \
#		 internal/ceres/generated/schur_eliminator_4_4_2.cc \
#		 internal/ceres/generated/schur_eliminator_4_4_3.cc \
#		 internal/ceres/generated/schur_eliminator_4_4_4.cc \
#		 internal/ceres/generated/schur_eliminator_4_4_d.cc

HEADERS += \
	include/ceres/autodiff_cost_function.h \
	include/ceres/autodiff_local_parameterization.h \
	include/ceres/c_api.h \
	include/ceres/ceres.h \
	include/ceres/conditioned_cost_function.h \
	include/ceres/cost_function.h \
	include/ceres/cost_function_to_functor.h \
	include/ceres/covariance.h \
	include/ceres/crs_matrix.h \
	include/ceres/dynamic_autodiff_cost_function.h \
	include/ceres/dynamic_numeric_diff_cost_function.h \
	include/ceres/fpclassify.h \
	include/ceres/gradient_checker.h \
	include/ceres/gradient_problem.h \
	include/ceres/gradient_problem_solver.h \
	include/ceres/internal/autodiff.h \
	include/ceres/internal/disable_warnings.h \
	include/ceres/internal/eigen.h \
	include/ceres/internal/fixed_array.h \
	include/ceres/internal/macros.h \
	include/ceres/internal/manual_constructor.h \
	include/ceres/internal/numeric_diff.h \
	include/ceres/internal/port.h \
	include/ceres/internal/reenable_warnings.h \
	include/ceres/internal/scoped_ptr.h \
	include/ceres/internal/variadic_evaluate.h \
	include/ceres/iteration_callback.h \
	include/ceres/jet.h \
	include/ceres/local_parameterization.h \
	include/ceres/loss_function.h \
	include/ceres/normal_prior.h \
	include/ceres/numeric_diff_cost_function.h \
	include/ceres/ordered_groups.h \
	include/ceres/problem.h \
	include/ceres/rotation.h \
	include/ceres/sized_cost_function.h \
	include/ceres/solver.h \
	include/ceres/types.h \
	include/ceres/version.h \
	internal/ceres/array_utils.h \
	internal/ceres/blas.h \
	internal/ceres/block_evaluate_preparer.h \
	internal/ceres/block_jacobian_writer.h \
	internal/ceres/block_jacobi_preconditioner.h \
	internal/ceres/block_random_access_dense_matrix.h \
	internal/ceres/block_random_access_diagonal_matrix.h \
	internal/ceres/block_random_access_matrix.h \
	internal/ceres/block_random_access_sparse_matrix.h \
	internal/ceres/block_sparse_matrix.h \
	internal/ceres/block_structure.h \
	internal/ceres/callbacks.h \
	internal/ceres/casts.h \
	internal/ceres/cgnr_linear_operator.h \
	internal/ceres/cgnr_solver.h \
	internal/ceres/collections_port.h \
	internal/ceres/compressed_col_sparse_matrix_utils.h \
	internal/ceres/compressed_row_jacobian_writer.h \
	internal/ceres/compressed_row_sparse_matrix.h \
	internal/ceres/conjugate_gradients_solver.h \
	internal/ceres/coordinate_descent_minimizer.h \
	internal/ceres/corrector.h \
	internal/ceres/covariance_impl.h \
	internal/ceres/cxsparse.h \
	internal/ceres/dense_jacobian_writer.h \
	internal/ceres/dense_normal_cholesky_solver.h \
	internal/ceres/dense_qr_solver.h \
	internal/ceres/dense_sparse_matrix.h \
	internal/ceres/detect_structure.h \
	internal/ceres/dogleg_strategy.h \
	internal/ceres/dynamic_compressed_row_finalizer.h \
	internal/ceres/dynamic_compressed_row_jacobian_writer.h \
	internal/ceres/dynamic_compressed_row_sparse_matrix.h \
	internal/ceres/evaluator.h \
	internal/ceres/execution_summary.h \
	internal/ceres/file.h \
	internal/ceres/gradient_checking_cost_function.h \
	internal/ceres/gradient_problem_evaluator.h \
	internal/ceres/graph_algorithms.h \
	internal/ceres/graph.h \
	internal/ceres/implicit_schur_complement.h \
	internal/ceres/integral_types.h \
	internal/ceres/iterative_schur_complement_solver.h \
	internal/ceres/lapack.h \
	internal/ceres/levenberg_marquardt_strategy.h \
	internal/ceres/linear_least_squares_problems.h \
	internal/ceres/linear_operator.h \
	internal/ceres/linear_solver.h \
	internal/ceres/line_search_direction.h \
	internal/ceres/line_search.h \
	internal/ceres/line_search_minimizer.h \
	internal/ceres/line_search_preprocessor.h \
	internal/ceres/low_rank_inverse_hessian.h \
	internal/ceres/map_util.h \
	internal/ceres/minimizer.h \
	internal/ceres/mutex.h \
	internal/ceres/parameter_block.h \
	internal/ceres/parameter_block_ordering.h \
	internal/ceres/partitioned_matrix_view.h \
	internal/ceres/partitioned_matrix_view_impl.h \
	internal/ceres/polynomial.h \
	internal/ceres/preconditioner.h \
	internal/ceres/preprocessor.h \
	internal/ceres/problem_impl.h \
	internal/ceres/program_evaluator.h \
	internal/ceres/program.h \
	internal/ceres/random.h \
	internal/ceres/reorder_program.h \
	internal/ceres/residual_block.h \
	internal/ceres/residual_block_utils.h \
	internal/ceres/schur_complement_solver.h \
	internal/ceres/schur_eliminator.h \
	internal/ceres/schur_eliminator_impl.h \
	internal/ceres/schur_jacobi_preconditioner.h \
	internal/ceres/scratch_evaluate_preparer.h \
	internal/ceres/small_blas.h \
	internal/ceres/solver_utils.h \
	internal/ceres/sparse_matrix.h \
	internal/ceres/sparse_normal_cholesky_solver.h \
	internal/ceres/split.h \
	internal/ceres/stl_util.h \
	internal/ceres/stringprintf.h \
	internal/ceres/suitesparse.h \
	internal/ceres/triplet_sparse_matrix.h \
	internal/ceres/trust_region_minimizer.h \
	internal/ceres/trust_region_preprocessor.h \
	internal/ceres/trust_region_strategy.h \
	internal/ceres/visibility_based_preconditioner.h \
	internal/ceres/wall_time.h \  
