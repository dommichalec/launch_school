class InvalidCodonError < StandardError
end

# Translation class
class Translation
  CODON_PROTIEN = { 'AUG' =>	'Methionine',    'UUU' => 'Phenylalanine',
                    'UUC' => 'Phenylalanine',  'UUA' => 'Leucine',
                    'UUG' => 'Leucine',        'UCU' => 'Serine',
                    'UCC' => 'Serine',         'UCA' => 'Serine',
                    'UCG' => 'Serine',         'UAU' => 'Tyrosine',
                    'UAC' => 'Tyrosine',       'UGU' => 'Cysteine',
                    'UGC' => 'Cysteine',       'UGG' => 'Tryptophan',
                    'UAA' => 'STOP',           'UAG' => 'STOP',
                    'UGA' => 'STOP' }

  def self.of_codon(codon)
    key_value_pair = CODON_PROTIEN.select { |key, value| codon.include?(key) }
    key_value_pair.values[0]
  end

  def self.of_rna(strand)
    strand_array = strand.scan(/.../)
    strand_array.each do |codon|
      fail InvalidCodonError unless CODON_PROTIEN.keys.include?(codon)
    end
    rna = []
    strand_array.each do |codon|
      break if Translation.of_codon(codon) == 'STOP'
      rna << Translation.of_codon(codon)
    end
    rna
  end
end
