% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/stream_data.R
\name{stream_read_socket}
\alias{stream_read_socket}
\title{Read Socket Stream}
\usage{
stream_read_socket(sc, name = NULL, columns = NULL, options = list(), ...)
}
\arguments{
\item{sc}{A \code{spark_connection}.}

\item{name}{The name to assign to the newly generated stream.}

\item{columns}{A vector of column names or a named vector of column types.
If specified, the elements can be \code{"binary"} for \code{BinaryType},
\code{"boolean"} for \code{BooleanType}, \code{"byte"} for \code{ByteType},
\code{"integer"} for \code{IntegerType}, \code{"integer64"} for \code{LongType},
\code{"double"} for \code{DoubleType}, \code{"character"} for \code{StringType},
\code{"timestamp"} for \code{TimestampType} and \code{"date"} for \code{DateType}.}

\item{options}{A list of strings with additional options.}

\item{...}{Optional arguments; currently unused.}
}
\description{
Reads a Socket stream as a Spark dataframe stream.
}
\examples{
\dontrun{

sc <- spark_connect(master = "local")

# Start socket server from terminal, example: nc -lk 9999
stream <- stream_read_socket(sc, options = list(host = "localhost", port = 9999))
stream
}

}
\seealso{
Other Spark stream serialization: 
\code{\link{stream_read_csv}()},
\code{\link{stream_read_delta}()},
\code{\link{stream_read_json}()},
\code{\link{stream_read_kafka}()},
\code{\link{stream_read_orc}()},
\code{\link{stream_read_parquet}()},
\code{\link{stream_read_text}()},
\code{\link{stream_write_console}()},
\code{\link{stream_write_csv}()},
\code{\link{stream_write_delta}()},
\code{\link{stream_write_json}()},
\code{\link{stream_write_kafka}()},
\code{\link{stream_write_memory}()},
\code{\link{stream_write_orc}()},
\code{\link{stream_write_parquet}()},
\code{\link{stream_write_text}()}
}
\concept{Spark stream serialization}
