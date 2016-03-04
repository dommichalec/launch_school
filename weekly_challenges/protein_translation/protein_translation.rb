class InvalidCodonError < StandardError
end

# Translation class
class Translation
  CODON_PROTIEN = { 'AUG' =>	'Methionine', 'UUU' => 'Phenylalanine',
                    'UUC' => 'Phenylalanine',  'UUA' => 'Leucine',
                    'UUG' => 'Leucine', 'UCU' => 'Serine',
                    'UCC' => 'Serine', 'UCA' => 'Serine',
                    'UCG' => 'Serine', 'UAU' => 'Tyrosine',
                    'UAC' => 'Tyrosine', 'UGU' => 'Cysteine',
                    'UGC' => 'Cysteine', 'UGG' => 'Tryptophan',
                    'UAA' => 'STOP', 'UAG' => 'STOP',
                    'UGA' => 'STOP' }.freeze

  def self.of_codon(codon)
    CODON_PROTIEN.select { |strand, _| codon.include? strand }.values.first
  end

  def self.of_rna(strand)
    rna = []
    strand.scan(/.../).each do |codon|
      break if Translation.of_codon(codon) == 'STOP'
      rna << Translation.of_codon(codon)
      fail InvalidCodonError unless CODON_PROTIEN.keys.include?(codon)
    end
    rna
  end
end
