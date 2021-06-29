# frozen_string_literal: true

require './lib/caesar_cipher'

describe '#caesar_cipher' do
	context "when a string and a number is passed" do
		it "returns the converted string" do
			expect(caesar_cipher("What a string!", 5)).to eq("Bmfy f xywnsl!")
		end

		it "returns small phrase" do
			expect(caesar_cipher("I'm will be changed!", 8)).to eq("Q'u eqtt jm kpivoml!")
		end

		it "returns big phrase" do
			expect(caesar_cipher("I too and my langth is big than your!", 21)).to eq("D ojj viy ht gviboc dn wdb ocvi tjpm!")
		end
	end
end