#!/bin/bash


# Set all the scons option explicitly

#echo `which g++`
export PKG_CONFIG_PATH=$PREFIX/lib/pkgconfig

scons QTDIR=$PREFIX QT4_BINPATH=$PREFIX/bin QT4_CPPPATH=$PREFIX/include QT4_LIBPATH=$PREFIX/lib QT4_FRAMEWORK=False \
gl_include=$PREFIX/include gl_lib=$PREFIX/lib \
python_includes=$PREFIX/include/python2.7 python_libpath=$PREFIX/lib \
boost_includes=$PREFIX/include boost_lib=$PREFIX/lib \
openalea_lib=$PREFIX/lib openalea_includes=$PREFIX/include \
build_prefix=$SRC_DIR/build-scons build_includedir=$PREFIX/include build_libdir=$PREFIX/lib build_bindir=$PREFIX/bin \
WITH_CGAL=True cgal_includes=$PREFIX/include cgal_libpath=$PREFIX/lib \
bison_bin=$PREFIX/bin flex_bin=$PREFIX/bin flex_libpath=$PREFIX/lib flex_include=$PREFIX/include \
readline_includes=$PREFIX/include readline_lib=$PREFIX/lib \
termcap_includes=$PREFIX/include termcap_lib=$PREFIX/lib \
pthread_includes=$PREFIX/include pthread_lib=$PREFIX/lib \
WITH_QHULL_2011=True qhull_includes=$PREFIX/include qhull_lib=$PREFIX/lib \
gmp_includes=$PREFIX/include gmp_libpath=$PREFIX/lib WITH_GMP=True \
mpfr_includes=$PREFIX/include mpfr_libpath=$PREFIX/lib WITH_MPFR=True \
ann_includes=$PREFIX/include ann_libpath=$PREFIX/lib \
WITH_LAPACK=False \
WITH_EIGEN=True eigen_includes=$PREFIX/include/eigen3 \
EXTRA_CXXFLAGS="-DCGAL_CFG_NO_CPP0X_VARIADIC_TEMPLATES -DWITH_QHULL_2011" \
num_jobs=$CPU_COUNT build


$PYTHON setup.py install --prefix=$PREFIX
