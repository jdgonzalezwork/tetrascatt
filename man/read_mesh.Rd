% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/read_mesh.R
\name{read_mesh}
\alias{read_mesh}
\title{read_mesh}
\usage{
read_mesh(meshfile)
}
\arguments{
\item{meshfile}{a string with the name of the file that contains the
volumetric mesh in GMF format  (Gamma Mesh Format), conventionally,
an ASCII file with ".mesh" extension.}
}
\value{
a list representing the mesh, it should include
\itemize{
  \item{ \code{vertex}: a data frame with the vertices of the tetrahedra,
  each vertex must have three coordinates}
  \item{ \code{tetra}: a data frame containing the four vertex-index of
  each tetrahedron}
}
}
\description{
This function reads the mesh from a file .mesh (extension)
}
\examples{



# Generates a pseudofile that has  the mesh of
# a cube with edges one metre in length, centered at the origin.

pseudofile=c("MeshVersionFormatted 2",
  "","Dimension 3","","Vertices","8","-0.5 -0.5 0.5 6 ",
   "-0.5 -0.5 -0.5 7 ","-0.5 0.5 0.5 9 ","-0.5 0.5 -0.5 11 ",
   "0.5 -0.5 0.5 16 ","0.5 -0.5 -0.5 17 ","0.5 0.5 0.5 19 ",
   "0.5 0.5 -0.5 21 ","","Edges", "12","2 1 5 ","1 3 8 ",
   "4 3 10 ","2 4 12 ","6 5 15 ","5 7 18 ","8 7 20 ","6 8 22 ",
  "2 6 25 ","1 5 26 ","4 8 29 ","3 7 30 ","","Triangles",
  "12","2 1 3 3 ","3 4 2 3 ","5 6 8 13 ","8 7 5 13 ",
  "2 6 5 23 ","5 1 2 23 ","8 4 3 27 ","3 7 8 27 ","2 4 8 31 ",
  "8 6 2 31 ","3 1 5 33 ","5 7 3 33 ","","Tetrahedra",
  "5","5 2 1 3 1 ","4 2 8 3 1 ","8 5 7 3 1 ","8 2 6 5 1 ",
  "3 2 8 5 1 ","","End","" )

# creating an empty temporary mesh file
temp_mesh_file=tempfile(fileext = ".mesh")
# loading the file with data.
writeLines(pseudofile,temp_mesh_file)
# reading the mesh
my_mesh=read_mesh( meshfile=temp_mesh_file)

# see the bounding box of the volumetric mesh.
lapply(my_mesh$vertex,range)

# unliking the teporary file.
unlink(temp_mesh_file)

}
