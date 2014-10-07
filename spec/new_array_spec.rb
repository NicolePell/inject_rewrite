require 'new_array'

describe Array do

	context 'inject should sum numbers in an array' do

		it 'when given no argument' do
			expect([1,2,3,4].accum(&:+)).to eq(10)
		end

		it 'when given a starting value' do
			expect([1,2,3,4].accum(10, &:+)).to eq(20)
		end
	end

	context 'inject should multiply numbers in an array' do

		it 'when given no argument' do
			expect([1,2,3,4].accum(&:*)).to eq(24)
		end

		it 'when given a starting value' do
			expect([1,2,3,4].accum(10, &:*)).to eq(240)
		end
	end

	context 'inject should find the longest word' do

		it 'when given an array of words' do
			expect(['cat','sheep','bear'].accum { |memo, word| memo.length > word.length ? memo : word }).to eq('sheep')
		end

	end
end

