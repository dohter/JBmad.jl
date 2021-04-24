module JBmad

function track(particles)
  (dummy, NP) = size(particles)
  ccall((:track, "../lib/libtest.so"), Cvoid, (Ref{Cdouble},Ref{Int64}), particles, NP)
end

end


