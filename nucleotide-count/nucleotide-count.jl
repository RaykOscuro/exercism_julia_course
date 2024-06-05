"""
    count_nucleotides(strand)

The count of each nucleotide within `strand` as a dictionary.

Invalid strands raise a `DomainError`.

"""
function count_nucleotides(strand)
    if any(c -> c ∉ ['A', 'C', 'G', 'T'], strand) throw(DomainError(strand))
    else return Dict('A' => count('A', strand), 'C' => count('C', strand), 'G' => count('G', strand), 'T' => count('T', strand))
    end
end