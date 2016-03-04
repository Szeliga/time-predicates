require "spec_helper"
require "time_predicates"

describe TimePredicates do
  describe "#after?" do
    subject(:predicate) { future.after?(past) }

    context "for Date" do
      let(:future) { Date.parse("2016-03-13") }
      let(:past) { Date.parse("2016-03-04") }

      it "is true if the provided date is in the past" do
        expect(predicate).to be_truthy
      end
    end

    context "for Time" do
      let(:future) { Time.parse("2016-03-04 21:00:30") }
      let(:past) { Time.parse("2016-03-04 21:00:00") }

      it "is true if the provided time is in the past" do
        expect(predicate).to be_truthy
      end
    end
  end

  describe "#before?" do
    subject(:predicate) { past.before?(future) }

    context "for Date" do
      let(:future) { Date.parse("2016-03-13") }
      let(:past) { Date.parse("2016-03-04") }

      it "is true if the provided date is in the future" do
        expect(predicate).to be_truthy
      end
    end

    context "for Time" do
      let(:future) { Time.parse("2016-03-04 21:00:30") }
      let(:past) { Time.parse("2016-03-04 21:00:00") }

      it "is true if the provided time is in the future" do
        expect(predicate).to be_truthy
      end
    end
  end

  describe "#after_or_equal?" do
    subject(:predicate) { future.after_or_equal?(past) }

    context "for Date" do
      let(:past) { Date.parse("2016-03-04") }

      context "when provided date is in the past" do
        let(:future) { Date.parse("2016-03-13") }

        it { is_expected.to be_truthy }
      end

      context "when provided date is equal" do
        let(:future) { Date.parse("2016-03-04") }

        it { is_expected.to be_truthy }
      end
    end

    context "for Time" do
      let(:past) { Time.parse("2016-03-04 21:00:00") }

      context "when provided time is in the past" do
        let(:future) { Time.parse("2016-03-04 21:00:30") }

        it { is_expected.to be_truthy }
      end

      context "when provided time is equal" do
        let(:future) { Time.parse("2016-03-04 21:00:00") }

        it { is_expected.to be_truthy }
      end
    end
  end

  describe "#before_or_equal?" do
    subject(:predicate) { past.before_or_equal?(future) }

    context "for Date" do
      let(:past) { Date.parse("2016-03-04") }

      context "when provided date is in the future" do
        let(:future) { Date.parse("2016-03-13") }

        it { is_expected.to be_truthy }
      end

      context "when provided date is equal" do
        let(:future) { Date.parse("2016-03-04") }

        it { is_expected.to be_truthy }
      end
    end

    context "for Time" do
      let(:past) { Time.parse("2016-03-04 21:00:00") }

      context "when provided time is in the future" do
        let(:future) { Time.parse("2016-03-04 21:00:30") }

        it { is_expected.to be_truthy }
      end

      context "when provided time is equal" do
        let(:future) { Time.parse("2016-03-04 21:00:00") }

        it { is_expected.to be_truthy }
      end
    end
  end
end
