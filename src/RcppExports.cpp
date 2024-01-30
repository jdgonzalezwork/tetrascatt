// Generated by using Rcpp::compileAttributes() -> do not edit by hand
// Generator token: 10BE3573-1514-4C36-9D1C-5A225CD40393

#include <RcppArmadillo.h>
#include <Rcpp.h>

using namespace Rcpp;

#ifdef RCPP_USE_GLOBAL_ROSTREAM
Rcpp::Rostream<true>&  Rcpp::Rcout = Rcpp::Rcpp_cout_get();
Rcpp::Rostream<false>& Rcpp::Rcerr = Rcpp::Rcpp_cerr_get();
#endif

// tetrascatt_c
arma::cx_vec tetrascatt_c(double cw, double g, double h, arma::vec freq, arma::umat Tet, arma::mat Ver, arma::vec kversor);
RcppExport SEXP _tetrascatt_tetrascatt_c(SEXP cwSEXP, SEXP gSEXP, SEXP hSEXP, SEXP freqSEXP, SEXP TetSEXP, SEXP VerSEXP, SEXP kversorSEXP) {
BEGIN_RCPP
    Rcpp::RObject rcpp_result_gen;
    Rcpp::RNGScope rcpp_rngScope_gen;
    Rcpp::traits::input_parameter< double >::type cw(cwSEXP);
    Rcpp::traits::input_parameter< double >::type g(gSEXP);
    Rcpp::traits::input_parameter< double >::type h(hSEXP);
    Rcpp::traits::input_parameter< arma::vec >::type freq(freqSEXP);
    Rcpp::traits::input_parameter< arma::umat >::type Tet(TetSEXP);
    Rcpp::traits::input_parameter< arma::mat >::type Ver(VerSEXP);
    Rcpp::traits::input_parameter< arma::vec >::type kversor(kversorSEXP);
    rcpp_result_gen = Rcpp::wrap(tetrascatt_c(cw, g, h, freq, Tet, Ver, kversor));
    return rcpp_result_gen;
END_RCPP
}

static const R_CallMethodDef CallEntries[] = {
    {"_tetrascatt_tetrascatt_c", (DL_FUNC) &_tetrascatt_tetrascatt_c, 7},
    {NULL, NULL, 0}
};

RcppExport void R_init_tetrascatt(DllInfo *dll) {
    R_registerRoutines(dll, NULL, CallEntries, NULL, NULL);
    R_useDynamicSymbols(dll, FALSE);
}