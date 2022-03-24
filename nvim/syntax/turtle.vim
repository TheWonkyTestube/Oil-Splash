" Vim syntax file
" Language: Turtle
" Latest Revision: 22 February 2022
" Copyright (c) 2022 Luís Moreira de Sousa
" SPDX-License-Identifier: EUPL-1.2

if exists("b:current_syntax")
  finish
endif

" Keywords
syn keyword header @prefix 
syn keyword header @base 

" RDF predicates
syn keyword rdf type

" XSD predicates
syn keyword xsd integer
syn keyword xsd real
syn keyword xsd string
syn keyword xsd minInclusive
syn keyword xsd maxInclusive

" Matches
syn match prefix '\S\+:' 
syn match rdf '\sa\s' 

" Regions
syn region uri     start='<' end='>'
syn region string  start='"' end='"'
syn region comment start='#' end='\n'

let b:current_syntax = "turtle"

hi def link header     PreProc
hi def link prefix     Statement
hi def link uri        Constant 
hi def link string     Constant 
hi def link comment    Comment
hi def link owl        Type
hi def link rdf        Type
hi def link rdfs       Type
hi def link xsd        Type


" owl predicates
syn keyword owl onProperty
syn keyword owl members
syn keyword owl TransitiveProperty
syn keyword owl topObjectProperty
syn keyword owl maxQualifiedCardinality
syn keyword owl unionOf
syn keyword owl Thing
syn keyword owl equivalentProperty
syn keyword owl hasValue
syn keyword owl versionInfo
syn keyword owl DeprecatedClass
syn keyword owl annotatedTarget
syn keyword owl complementOf
syn keyword owl disjointUnionOf
syn keyword owl disjointWith
syn keyword owl equivalentClass
syn keyword owl ReflexiveProperty
syn keyword owl deprecated
syn keyword owl incompatibleWith
syn keyword owl annotatedSource
syn keyword owl NamedIndividual
syn keyword owl ObjectProperty
syn keyword owl hasSelf
syn keyword owl minQualifiedCardinality
syn keyword owl bottomObjectProperty
syn keyword owl backwardCompatibleWith
syn keyword owl targetValue
syn keyword owl oneOf
syn keyword owl Class
syn keyword owl distinctMembers
syn keyword owl DatatypeProperty
syn keyword owl withRestrictions
syn keyword owl minCardinality
syn keyword owl sameAs
syn keyword owl bottomDataProperty
syn keyword owl onDatatype
syn keyword owl datatypeComplementOf
syn keyword owl cardinality
syn keyword owl Restriction
syn keyword owl IrreflexiveProperty
syn keyword owl intersectionOf
syn keyword owl DeprecatedProperty
syn keyword owl OntologyProperty
syn keyword owl Axiom
syn keyword owl AnnotationProperty
syn keyword owl priorVersion
syn keyword owl someValuesFrom
syn keyword owl onDataRange
syn keyword owl differentFrom
syn keyword owl assertionProperty
syn keyword owl versionIRI
syn keyword owl InverseFunctionalProperty
syn keyword owl onProperties
syn keyword owl topDataProperty
syn keyword owl AllDifferent
syn keyword owl targetIndividual
syn keyword owl propertyChainAxiom
syn keyword owl AllDisjointProperties
syn keyword owl Ontology
syn keyword owl AsymmetricProperty
syn keyword owl maxCardinality
syn keyword owl FunctionalProperty
syn keyword owl propertyDisjointWith
syn keyword owl onClass
syn keyword owl imports
syn keyword owl inverseOf
syn keyword owl Annotation
syn keyword owl hasKey
syn keyword owl NegativePropertyAssertion
syn keyword owl allValuesFrom
syn keyword owl SymmetricProperty
syn keyword owl DataRange
syn keyword owl annotatedProperty
syn keyword owl qualifiedCardinality
syn keyword owl Nothing
syn keyword owl sourceIndividual
syn keyword owl AllDisjointClasses

" rdfs predicates
syn keyword rdfs range
syn keyword rdfs subClassOf
syn keyword rdfs isDefinedBy
syn keyword rdfs subPropertyOf
syn keyword rdfs ContainerMembershipProperty
syn keyword rdfs member
syn keyword rdfs seeAlso
syn keyword rdfs label
syn keyword rdfs comment
syn keyword rdfs Datatype
syn keyword rdfs Resource
syn keyword rdfs Container
syn keyword rdfs domain
syn keyword rdfs Literal
syn keyword rdfs Class
