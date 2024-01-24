<?php

namespace App\Imports;

use App\Models\TotalAmount;
use Maatwebsite\Excel\Concerns\ToModel;
use Maatwebsite\Excel\Concerns\WithHeadingRow;
use Carbon\Carbon;

class BulkImport implements ToModel, WithHeadingRow
{
    /**
     * @param array $row
     *
     * @return \Illuminate\Database\Eloquent\Model|null
     */
    public function model(array $row)
    {
        /**
         * @param array $row
         *
         * @return \Illuminate\Database\Eloquent\Model|null
         */
        return new TotalAmount([
            'date' => Carbon::createFromFormat('d/m/Y', str_replace('/', '-', $row['date'])),
            // 'date' => $row['date'],
            'doc_no' => $row['doc_no'],
            'description' => $row['description'],
            'account' => $row['account'],
            'item' => $row['item'],
            'amount' => $row['amount'],
        ]);
    }
}
