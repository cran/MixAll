/*--------------------------------------------------------------------*/
/*     Copyright (C) 2004-2016  Serge Iovleff, Université Lille 1, Inria

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

    Contact : S..._Dot_I..._At_stkpp_Dot_org (see copyright for ...)
*/

/*
 * Project:  stkpp::Clustering
 * created on: 16 oct. 2012
 * Author:   iovleff, S..._Dot_I..._At_stkpp_Dot_org (see copyright for ...)
 * Originally created by Parmeet bhatia <b..._DOT_p..._AT_gmail_Dot_com>
 **/

/** @file STK_MixtureAlgo.cpp
 *  @brief In this file we implement the run method of the mixture algorithms.
 **/

#include <Sdk.h>

#include <Clustering/include/MixtureAlgo/STK_IMixtureAlgoLearn.h>
#include <Clustering/include/STK_IMixtureLearner.h>

namespace STK
{

/* default constructor */
IMixtureAlgoLearn::IMixtureAlgoLearn(): IRunnerBase(), p_model_(0), nbIterMax_(0), epsilon_(0.) {}
/* Copy constructor.
 *  @param algo the algorithm to copy */
IMixtureAlgoLearn::IMixtureAlgoLearn( IMixtureAlgoLearn const& algo)
                        : IRunnerBase(algo)
                        , p_model_(algo.p_model_)
                        , nbIterMax_(algo.nbIterMax_)
                        , epsilon_(algo.epsilon_)
{}

/* destructor */
IMixtureAlgoLearn::~IMixtureAlgoLearn() {}

void IMixtureAlgoLearn::setModel(IMixtureLearner* p_model)
{ p_model_ = p_model; }


} // namespace STK
