/*--------------------------------------------------------------------*/
/*     Copyright (C) 2004-2016 Serge Iovleff

    This program is free software; you can redistribute it and/or modify
    it under the terms of the GNU Lesser General Public License as
    published by the Free Software Foundation; either version 2 of the
    License, or (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU Lesser General Public License for more details.

    You should have received a copy of the GNU Lesser General Public
    License along with this program; if not, write to the
    Free Software Foundation, Inc.,
    59 Temple Place,
    Suite 330,
    Boston, MA 02111-1307
    USA

    Contact : S..._DOT_I..._AT_stkpp.org (see copyright for ...)
*/

/*
 * Project:  stkpp::Clustering
 * created on: Oct 24, 2013
 * Author:   Serge Iovleff
 **/

/** @file  STK_PoissonParameters.h
 *  @brief In this file we implement the Parameters classes for Poisson
 *  mixture models
 **/

#include "../include/PoissonModels/STK_PoissonParameters.h"

namespace STK
{
/* default constructor
 *  @param nbCluster the number of class of the mixture
 **/
ModelParameters<Clust::Poisson_ljk_>::ModelParameters(int nbCluster)
                            : lambda_(nbCluster) {}
/* copy constructor.
 *  @param param the parameters to copy.
 **/
ModelParameters<Clust::Poisson_ljk_>::ModelParameters( ModelParameters const& param)
               : lambda_(param.lambda_)
{}
/* destructor */
ModelParameters<Clust::Poisson_ljk_>::~ModelParameters() {}
/* resize the set of parameter */
void ModelParameters<Clust::Poisson_ljk_>::resize(Range const& range)
{
  for (int k = lambda_.begin(); k< lambda_.end(); ++k)
  { lambda_[k].resize(range) = 1.;}
}

/* default constructor
 *  @param nbCluster the number of class of the mixture
 **/
ModelParameters<Clust::Poisson_ljlk_>::ModelParameters(int nbCluster)
                : lambdak_(nbCluster), lambdaj_() {}
/* copy constructor.
 *  @param param the parameters to copy.
 **/
ModelParameters<Clust::Poisson_ljlk_>::ModelParameters( ModelParameters const& param)
               : lambdak_(param.lambdak_), lambdaj_(param.lambdaj_)
{}
/* destructor */
ModelParameters<Clust::Poisson_ljlk_>::~ModelParameters() {}
/* resize the set of parameter */
void ModelParameters<Clust::Poisson_ljlk_>::resize(Range const& range)
{
  for (int k = lambdak_.begin(); k< lambdak_.end(); ++k) { lambdak_[k] = 1.;}
  lambdaj_.resize(range) = 1;
}

/* default constructor
 *  @param nbCluster the number of class of the mixture
 **/
ModelParameters<Clust::Poisson_lk_>::ModelParameters(int nbCluster): lambda_(nbCluster) {}
/* copy constructor.
 *  @param param the parameters to copy.
 **/
ModelParameters<Clust::Poisson_lk_>::ModelParameters( ModelParameters const& param)
               : lambda_(param.lambda_)
{}
/* destructor */
ModelParameters<Clust::Poisson_lk_>::~ModelParameters() {}
/* resize the set of parameter */
void ModelParameters<Clust::Poisson_lk_>::resize(Range const& range)
{
  for (int k = lambda_.begin(); k< lambda_.end(); ++k) { lambda_[k] = 1.;}
}

} // namespace STK

